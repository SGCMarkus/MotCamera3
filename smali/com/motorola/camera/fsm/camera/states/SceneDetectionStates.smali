.class public final Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;
.super Ljava/lang/Object;
.source "SceneDetectionStates.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneUpdateRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagModeChangeRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ActionSceneQueuedGuardRunnable;
    }
.end annotation


# static fields
.field public static final SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UPDATE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ACTION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "state"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;-><init>(Z)V

    .line 9
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HISTORY_STATE"

    .line 13
    invoke-direct {v5, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneUpdateRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneUpdateRunnable;-><init>()V

    .line 16
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 18
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 19
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 22
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 23
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ActionSceneQueuedGuardRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ActionSceneQueuedGuardRunnable;-><init>(Z)V

    .line 26
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 27
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-direct {v3, v6, v8, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 31
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 36
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 38
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraFsm$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 5
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 10
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 11
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 18
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAutoTransitionState:Z

    .line 22
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 23
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 24
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 25
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ActionSceneQueuedGuardRunnable;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ActionSceneQueuedGuardRunnable;-><init>(Z)V

    .line 28
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 29
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 32
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 33
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 35
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;-><init>()V

    .line 36
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 37
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 40
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 42
    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 44
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$FinishSceneUpdateRunnable;-><init>()V

    .line 45
    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 46
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p0

    .line 47
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object p0

    .line 49
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p0

    .line 51
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 53
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 54
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 55
    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 56
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 57
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 59
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 60
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 61
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 62
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 63
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    .line 64
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 65
    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 66
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 67
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 68
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 70
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
