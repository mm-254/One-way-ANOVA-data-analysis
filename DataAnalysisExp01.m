%Data Analysis
load('LLVD.txt');
%Liquid Level

% %Accuracy
% AccVD=1-LLVD.Accuracy;
% AccAud=1-LLAud.Accuracy;
% AccVib=1-LLVib.Accuracy;
% AccHap=1-LLHap.Accuracy;
% 
% AccLL=[AccVD,AccAud,AccVib,AccHap];
% meanAcc=mean(AccLL);
% 
% bacc=bar(meanAcc);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Speech Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bacc,l);
% 
% [p_acc,tbl_acc,stats_acc] = anova1(AccLL);
% 
% %IT_Estimate
% LLVDConf=confusionmat(LLVD.Actual, LLVD.Perceived);
% LLVDch=confusionchart(LLVD.Actual, LLVD.Perceived);
% 
%Resolution

% ResVD=LLVD.Res;
% ResAud=LLAud.Res;
% ResVib=LLVib.Res;
% ResHap=LLHap.Res;
% 
% ResLL=[ResVD,ResAud,ResVib,ResHap];
% ResLL=rmmissing(ResLL);
% meanRes=mean(ResLL);
% 
% bres=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bres,l);
% 
% [p_res,tbl_res,stats_res] = anova1(ResLL);
% 
%Hit Rate

% HRVD=LLVD.HR;
% HRAud=LLAud.HR;
% HRVib=LLVib.HR;
% HRHap=LLHap.HR;
% 
% HRLL=[HRVD,HRAud,HRVib,HRHap];
% meanHR=mean(HRLL);
% 
% bhr=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bhr,l);
% 
% [p_hr,tbl_hr,stats_hr] = anova1(HRLL);
% 
% %Reaction Time
% 
% RTVD=LLVD.MeanRT;
% RTAud=LLAud.MeanRT;
% RTVib=LLVib.MeanRT;
% RTHap=LLHap.MeanRT;
% 
% RTLL=[RTVD,RTAud,RTVib,RTHap];
% RTLL=RTLL./1000000; %Convert to seconds
% meanRT=mean(RTLL);
% %normalize
% RTLLn=mat2gray(RTLL);
% meanRTn=mean(RTLLn);
% 
% brt=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(brt,l);
% 
% [p_rt,tbl_rt,stats_rt] = anova1(RTLLn);
% %Repeated measures ANOVA
% subject = LLVD.Subject;
% t = table(subject,RTLL(:,1),RTLL(:,2),RTLL(:,3),RTLL(:,4),...
% 'VariableNames',["Subject","m1","m2","m3","m4"]);
% Mod = ["VD" "Aud" "Vib" "Hap"]';
% rm = fitrm(t,'m1-m4 ~Subject','WithinDesign',Mod);
% ranovatblrt=ranova(rm);
% 
% %Preference Score
% 
% PrefVD=LLVD.PrefScore;
% PrefAud=LLAud.PrefScore;
% PrefVib=LLVib.PrefScore;
% PrefHap=LLHap.PrefScore;
% 
% PrefLL=[PrefVD,PrefAud,PrefVib,PrefHap];
% meanPref=mean(PrefLL);
% 
% bpref=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bpref,l);
% 
% [p_pref,tbl_pref,stats_pref] = anova1(PrefLL);
%------------------------------------------------------------------------------------------------
%Weight

% %Accuracy
% AccVD=1-WVD.Accuracy;
% AccAud=1-WAud.Accuracy;
% AccVib=1-WVib.Accuracy;
% AccHap=1-WHap.Accuracy;
% 
% AccW=[AccVD,AccAud,AccVib,AccHap];
% meanAcc=mean(AccW);
% 
% bacc=bar(meanAcc);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Speech Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bacc,l);
% 
% [p_acc,tbl_acc,stats_acc] = anova1(AccW);

% %IT_Estimate
% WVDConf=confusionmat(WVD.Actual, WVD.Perceived);
% WVDch=confusionchart(WVD.Actual, WVD.Perceived);
% 
%Resolution

% ResVD=WVD.Res;
% ResAud=WAud.Res;
% ResVib=WVib.Res;
% ResHap=WHap.Res;
% 
% ResW=[ResVD,ResAud,ResVib,ResHap];
% ResW=rmmissing(ResW);
% meanRes=mean(ResW);
% 
% bres=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bres,l);
% 
% [p_res,tbl_res,stats_res] = anova1(ResW);

%Hit Rate
% 
% HRVD=WVD.HR;
% HRAud=WAud.HR;
% HRVib=WVib.HR;
% HRHap=WHap.HR;
% 
% HRW=[HRVD,HRAud,HRVib,HRHap];
% meanHR=mean(HRW);
% 
% bhr=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bhr,l);
% 
% [p_hr,tbl_hr,stats_hr] = anova1(HRW);
% 
%Reaction Time

% RTVD=WVD.MeanRT;
% RTAud=WAud.MeanRT;
% RTVib=WVib.MeanRT;
% RTHap=WHap.MeanRT;
% 
% RTW=[RTVD,RTAud,RTVib,RTHap];
% RTW=RTW./1000000; %Convert to seconds
% meanRT=mean(RTW);
% %normalize
% RTWn=mat2gray(RTW);
% meanRTn=mean(RTWn);
% 
% brt=bar(meanRT);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(brt,l);
% 
% [p_rt,tbl_rt,stats_rt] = anova1(RTWn);
% %Repeated measures ANOVA
% subject = WVD.Subject;
% t = table(subject,RTW(:,1),RTW(:,2),RTW(:,3),RTW(:,4),...
% 'VariableNames',["Subject","m1","m2","m3","m4"]);
% Mod = ["VD" "Aud" "Vib" "Hap"]';
% rm = fitrm(t,'m1-m4 ~Subject','WithinDesign',Mod);
% ranovatblrt=ranova(rm);
% 
% %Preference Score
% 
% PrefVD=WVD.PrefScore;
% PrefAud=WAud.PrefScore;
% PrefVib=WVib.PrefScore;
% PrefHap=WHap.PrefScore;
% 
% PrefW=[PrefVD,PrefAud,PrefVib,PrefHap];
% meanPref=mean(PrefW);
% 
% bpref=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bpref,l);
% 
% [p_pref,tbl_pref,stats_pref] = anova1(PrefW);

%-------------------------------------------------------------------------------
%Temp

%Accuracy
% AccVD=1-TVD.Accuracy;
% AccAud=1-TAud.Accuracy;
% AccVib=1-TVib.Accuracy;
% AccPelt=1-TPelt.Accuracy;
% 
% AccT=[AccVD,AccAud,AccVib,AccPelt];
% meanAcc=mean(AccT);
% 
% bacc=bar(meanAcc);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Speech Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bacc,l);
% 
% [p_acc,tbl_acc,stats_acc] = anova1(AccT);

% %IT_Estimate
% TVDConf=confusionmat(TVD.Actual, TVD.Perceived);
% TVDch=confusionchart(TVD.Actual, TVD.Perceived);
% 
%Resolution

% ResVD=TVD.Res;
% ResAud=TAud.Res;
% ResVib=TVib.Res;
% ResPelt=TPelt.Res;
% 
% ResT=[ResVD,ResAud,ResVib,ResPelt];
% ResT=rmmissing(ResT);
% meanRes=mean(ResT);
% 
% bres=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Thermal';
% legend(bres,l);
% 
% [p_res,tbl_res,stats_res] = anova1(ResT);

%Hit Rate
% 
% HRVD=TVD.HR;
% HRAud=TAud.HR;
% HRVib=TVib.HR;
% HRHap=TPelt.HR;
% 
% HRT=[HRVD,HRAud,HRVib,HRHap];
% meanHR=mean(HRT);
% 
% bhr=bar(meanRes);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(bhr,l);
% 
% [p_hr,tbl_hr,stats_hr] = anova1(HRT);
% 
%Reaction Time

% RTVD=TVD.MeanRT;
% RTAud=TAud.MeanRT;
% RTVib=TVib.MeanRT;
% RTPelt=TPelt.MeanRT;
% 
% RTT=[RTVD,RTAud,RTVib,RTPelt];
% RTT=RTT./1000000; %Convert to seconds
% meanRT=mean(RTT);
% %normalize
% RTTn=mat2gray(RTT);
% meanRTn=mean(RTTn);
% 
% brt=bar(meanRT);
% grid on
% l = cell(1,4);
% l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
% legend(brt,l);

% [p_rt,tbl_rt,stats_rt] = anova1(RTTn);
% % %Repeated measures ANOVA
% subject = TVD.Subject;
% t = table(subject,RTT(:,1),RTT(:,2),RTT(:,3),RTT(:,4),...
% 'VariableNames',["Subject","m1","m2","m3","m4"]);
% Mod = ["VD" "Aud" "Vib" "Pelt"]';
% rm = fitrm(t,'m1-m4 ~Subject','WithinDesign',Mod);
% ranovatblrt=ranova(rm);
% 
% %Preference Score
% 
PrefVD=TVD.PrefScore;
PrefAud=TAud.PrefScore;
PrefVib=TVib.PrefScore;
PrefTherm=TPelt.PrefScore;

PrefT=[PrefVD,PrefAud,PrefVib,PrefTherm];
meanPref=mean(PrefT);

bpref=bar(meanRes);
grid on
l = cell(1,4);
l{1}='Visual Display'; l{2}='Semantic Audio Cues'; l{3}='Vibration'; l{4}='Haptic';
legend(bpref,l);

[p_pref,tbl_pref,stats_pref] = anova1(PrefT);