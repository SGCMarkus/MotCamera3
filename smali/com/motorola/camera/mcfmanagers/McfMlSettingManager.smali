.class public Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "McfMlSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;
    }
.end annotation


# instance fields
.field public mIsCliDisplay:Z

.field public mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

.field public mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

.field public final mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;-><init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/Collection;

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/Collection;

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/Collection;

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final handleAiLowLightSelfiePreview()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfiePreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    const/4 v3, 0x0

    .line 5
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v2, v3

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleGestureAutoCapture()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v2, "McfMlSettingManager"

    if-nez v1, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    :goto_0
    move v1, v4

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 6
    invoke-static {v1, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "Mcf is not GestureMV1 capable"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    goto :goto_3

    .line 12
    :cond_5
    :goto_2
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 13
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "GESTURE_AUTO_CAPTURE does not have any resources"

    .line 15
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-array v2, v5, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 16
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v3, v2, v4

    .line 17
    iget-boolean v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 18
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_7

    .line 19
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-static {v1, v5, v3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 21
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :goto_3
    return-void
.end method

.method public final handleInception()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->INCEPTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v2, "McfMlSettingManager"

    if-nez v1, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :goto_0
    move v1, v4

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_INCEPTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 6
    invoke-static {v1, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "Mcf is not Inception capable"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v4, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_2
    return-void
.end method

.method public final handleSceneDetection()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v3, "McfMlSettingManager"

    if-nez v2, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    return-void

    .line 8
    :cond_2
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 11
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_6

    .line 12
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v4, :cond_4

    .line 13
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 17
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-static {v0, v6, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 20
    :cond_4
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "SCENE_DETECTION does not have any resources"

    .line 22
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-array v2, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v2, v5

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_2

    .line 25
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_2
    return-void
.end method

.method public final handleSmileDetection()V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v1, :cond_0

    const-string p0, "McfMlSettingManager"

    const-string v0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 7
    :goto_0
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 11
    iget-boolean v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 12
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v5

    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 13
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 14
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 16
    invoke-static {v1, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_5

    .line 17
    array-length v4, v1

    if-ge v4, v2, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    aget v1, v1, v3

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_3

    :cond_5
    :goto_2
    const-string v1, "SettingsHelper"

    const-string v4, "Smile DSP modes is null or empty"

    .line 19
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    if-eqz v1, :cond_6

    .line 20
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    goto :goto_4

    .line 21
    :cond_6
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 22
    :goto_4
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 23
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    if-nez v4, :cond_a

    .line 24
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v4

    .line 25
    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v5}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 26
    iput-object v1, v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v6, 0x7f1100cf

    .line 27
    iput v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 28
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v7, 0x3

    if-eq v6, v7, :cond_9

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error - modelState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in checkModelStateUpdateForMotSmileDetect was not associated to any of the available switch cases."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ModelUpdateDialogHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    const v4, 0x7f11010b

    .line 30
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 31
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 32
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 33
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 34
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const v4, 0x7f110123

    .line 35
    sget-object v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda4;

    .line 36
    iput-object v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 37
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const v4, 0x7f110105

    .line 38
    sget-object v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

    .line 39
    iput-object v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 40
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 41
    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 42
    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v6, v5}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_5
    move v4, v2

    goto :goto_7

    .line 44
    :cond_9
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    :goto_6
    move v4, v3

    :goto_7
    if-nez v4, :cond_c

    .line 45
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-array v2, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v2, v3

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_8

    .line 49
    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 8
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    const-string v2, "McfMlSettingManager"

    if-nez v0, :cond_1

    const-string p0, "getUseCase returned null"

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Mcf not supported by current mode"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleAiLowLightSelfiePreview()V

    .line 15
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 17
    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    .line 18
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 20
    :cond_3
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 21
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "DOC_SCAN does not have any resources"

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-array v5, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 24
    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v5, v1

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_0

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 27
    :goto_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 29
    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    .line 30
    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 32
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 34
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "SLIDE_SCAN does not have any resources"

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 37
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 38
    new-array v5, v4, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 39
    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v7, v5, v1

    const/4 v7, 0x2

    if-lt v4, v7, :cond_8

    .line 40
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v5, v6

    .line 41
    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v3, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_1

    .line 42
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleInception()V

    .line 44
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    .line 46
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v3, "mMcfMlStateMachine is null"

    if-nez v0, :cond_a

    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 49
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMotAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_2

    :cond_b
    move v0, v1

    :goto_2
    if-eqz v0, :cond_c

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v6

    goto :goto_3

    :cond_c
    move v0, v1

    :goto_3
    if-eqz v0, :cond_10

    .line 52
    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 53
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 55
    invoke-static {v6, v0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdateForAiLowLightSelfie(ZLandroid/content/Context;)Z

    move-result v0

    goto :goto_4

    :cond_d
    move v0, v1

    :goto_4
    if-eqz v0, :cond_e

    const-string v0, "Content Update required, skipping Low Light AI Model loading"

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 57
    :cond_e
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 58
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 59
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    new-array v5, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 61
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v5, v1

    .line 62
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_5

    :cond_f
    const-string v0, "Could not retrieve Mot Low Light Selfie Ml Model"

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_10
    :goto_5
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iget-object v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v4, :cond_11

    .line 65
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 66
    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v6

    goto :goto_6

    :cond_12
    move v3, v1

    :goto_6
    if-eqz v3, :cond_13

    .line 68
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 69
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 70
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v6

    goto :goto_7

    :cond_13
    move v3, v1

    :goto_7
    if-eqz v3, :cond_16

    .line 71
    iget-boolean v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v3, :cond_14

    .line 72
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 73
    invoke-static {v0, v6, v3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 74
    :cond_14
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 75
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 76
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    new-array v2, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 77
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v2, v1

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_8

    :cond_15
    const-string v0, "Could not retrieve Mot Image Stabilization Ml Model"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_16
    :goto_8
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 81
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v2, v1

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    .line 85
    :cond_17
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_GLASSES_RECOGNIZER:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_GLASSES_RECOGNIZER:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 86
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 87
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 88
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_18

    .line 89
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    goto :goto_9

    .line 90
    :cond_18
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_GLASSES_RECOGNIZER:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 91
    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    new-array v3, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 93
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v2, v3, v1

    .line 94
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v1, v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    .line 95
    :cond_19
    :goto_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 96
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 97
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 98
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 99
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 100
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 101
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 102
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 103
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 104
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 105
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 106
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 107
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v6, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_a

    .line 108
    :cond_1a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 109
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->unregisterSettingsManager()V

    .line 110
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 111
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 112
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_a

    .line 113
    :cond_1b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 114
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->unregisterSettingsManager()V

    .line 115
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 116
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 117
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_1c
    :goto_a
    return-void
.end method

.method public final unregisterSettingsManager()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
