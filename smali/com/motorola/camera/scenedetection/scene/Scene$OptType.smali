.class public final enum Lcom/motorola/camera/scenedetection/scene/Scene$OptType;
.super Ljava/lang/Enum;
.source "Scene.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/scenedetection/scene/Scene$OptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

.field public static final enum OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

.field public static final enum OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-string v1, "OPT_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    new-instance v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-string v3, "OPT_OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$OptType;
    .locals 1

    const-class v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/scenedetection/scene/Scene$OptType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    return-object v0
.end method
