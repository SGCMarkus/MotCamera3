.class public Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "ToastUIComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;,
        Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;
    }
.end annotation


# static fields
.field public static mIsModesMenuOpen:Z = false

.field public static mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;


# instance fields
.field public mAlignment:I

.field public final mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

.field public final mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

.field public mHandler:Landroid/os/Handler;

.field public mIsControlPanelOpen:Z

.field public mLandscapeAlignCenter:Z

.field public mPreviewRect:Landroid/graphics/RectF;

.field public final mRootLayout:Landroid/widget/RelativeLayout;

.field public final mText:Landroid/widget/TextView;

.field public final mTextDescription:Landroid/widget/TextView;

.field public mToastStyle:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    .line 3
    new-instance p2, Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    .line 5
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    const p2, 0x7f0a03c5

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a03c7

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/RotateLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    const p2, 0x7f0a03c6

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a03c8

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const p2, 0x7f0a03c9

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 4
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final handlePanoLimitToast(Z)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final hasLimitToast()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string p0, "BatterySaverHandler"

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    const-string p0, "BatteryHandler"

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public rotate(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 2
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->handlePanoLimitToast(Z)V

    :cond_3
    if-nez v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    return-void

    .line 6
    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    .line 8
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 10
    sget v3, Lcom/motorola/camera/ui/LayoutManager;->mSurfaceDensity:F

    .line 11
    invoke-static {}, Lcom/motorola/camera/ui/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v4

    mul-float/2addr v4, v3

    .line 12
    sget-object v5, Lcom/motorola/camera/ui/LayoutManager;->mLayout:Lcom/motorola/camera/ui/LayoutManager$LayoutValue;

    .line 13
    sget-object v6, Lcom/motorola/camera/ui/LayoutManager$LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/LayoutManager$LayoutValue;

    if-ne v5, v6, :cond_2

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 14
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 15
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    iget v4, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 17
    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    .line 18
    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Z)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 19
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 20
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-static {v4}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v4, v3

    .line 22
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 24
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07031b

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 30
    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006b

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    goto :goto_1

    :cond_4
    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 33
    :goto_1
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :goto_2
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method

.method public final showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 3
    :cond_0
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:I

    if-eqz v0, :cond_2

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    goto :goto_0

    .line 6
    :cond_2
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 8
    iget-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    .line 9
    :goto_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    .line 10
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_6

    const/16 v4, 0x10e

    if-eq v0, v4, :cond_6

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mVisible:Z

    if-eqz v0, :cond_a

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    .line 17
    iget v4, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    .line 18
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 19
    :goto_3
    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    .line 20
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_9

    const/4 v5, 0x4

    if-eq v0, v5, :cond_8

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f08008f

    .line 23
    invoke-virtual {v1, v5}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v1, 0x7f12029e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 26
    :cond_8
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    .line 27
    iput v3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    .line 29
    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f08008e

    .line 33
    invoke-virtual {v1, v4}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v1, 0x7f1201a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f08008c

    .line 39
    invoke-virtual {v1, v5}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v1, 0x7f12013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    .line 43
    iget v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    .line 44
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->show()V

    if-eqz v0, :cond_a

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    :cond_a
    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 49
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_5

    .line 54
    :cond_c
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 55
    iget v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_5
    iget p0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    if-ne p0, v3, :cond_d

    const-string p0, " "

    .line 58
    invoke-static {v1, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 59
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 9
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 10
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 15
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    sput-boolean v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    .line 18
    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_c

    .line 19
    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_c

    .line 20
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 21
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 23
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_4

    .line 26
    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_4

    .line 27
    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    if-nez p1, :cond_4

    .line 28
    new-instance p1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 30
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 31
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FrontFlash$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontFlash$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 32
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 33
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    sput-boolean v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    goto :goto_2

    .line 35
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 37
    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eq p1, v4, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    .line 38
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->handlePanoLimitToast(Z)V

    goto :goto_2

    .line 39
    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 40
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 41
    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eq p1, v4, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_1

    :cond_a
    move v1, v2

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    .line 42
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FrontFlash$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontFlash$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    .line 2
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 10
    :goto_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702ca

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 13
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702c8

    .line 15
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 16
    iget v5, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/16 v0, 0xd

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_9

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_10

    .line 18
    :cond_2
    iget v8, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v9, 0x5a

    const/16 v10, 0xe

    const/16 v11, 0xb

    const/16 v12, 0x9

    const/16 v13, 0xc

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v6, 0xf

    if-eq v8, v9, :cond_c

    const/16 v9, 0xb4

    if-eq v8, v9, :cond_9

    const/16 v9, 0x10e

    if-eq v8, v9, :cond_5

    if-ne v5, v7, :cond_3

    move v4, v15

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    .line 19
    :goto_1
    invoke-virtual {v1, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v15

    .line 21
    :goto_2
    invoke-virtual {v1, v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    invoke-virtual {v1, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 23
    invoke-virtual {v1, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v1, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 25
    invoke-virtual {v1, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v2

    .line 26
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int v0, v3

    .line 27
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 28
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_9

    .line 29
    :cond_5
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_6

    .line 30
    invoke-virtual {v1, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 31
    invoke-virtual {v1, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    invoke-virtual {v1, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    invoke-virtual {v1, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 35
    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    .line 36
    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 37
    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    if-nez v0, :cond_10

    float-to-int v0, v4

    .line 38
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_9

    .line 39
    :cond_6
    invoke-virtual {v1, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    invoke-virtual {v1, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 41
    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v3, v7, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v15

    .line 42
    :goto_3
    invoke-virtual {v1, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v0, v7, :cond_8

    move v0, v15

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 44
    :goto_4
    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45
    invoke-virtual {v1, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v2

    .line 47
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_9

    :cond_9
    if-ne v5, v7, :cond_a

    move v4, v15

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    .line 48
    :goto_5
    invoke-virtual {v1, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v0, v7, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    move v0, v15

    .line 50
    :goto_6
    invoke-virtual {v1, v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51
    invoke-virtual {v1, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52
    invoke-virtual {v1, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {v1, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    invoke-virtual {v1, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v2

    .line 55
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    float-to-int v0, v3

    .line 56
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 57
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    .line 58
    :cond_c
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 59
    invoke-virtual {v1, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    invoke-virtual {v1, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    invoke-virtual {v1, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    invoke-virtual {v1, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    .line 65
    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66
    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    if-nez v0, :cond_10

    float-to-int v0, v4

    .line 67
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_9

    .line 68
    :cond_d
    invoke-virtual {v1, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    invoke-virtual {v1, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v3, v7, :cond_e

    move v3, v15

    goto :goto_7

    :cond_e
    const/4 v3, 0x1

    .line 71
    :goto_7
    invoke-virtual {v1, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:I

    if-ne v0, v7, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    move v0, v15

    .line 73
    :goto_8
    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    invoke-virtual {v1, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v2

    .line 76
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_10
    :goto_9
    return-object v1
.end method
