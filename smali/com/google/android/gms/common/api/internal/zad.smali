.class public abstract Lcom/google/android/gms/common/api/internal/zad;
.super Lcom/google/android/gms/common/api/internal/zac;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zac;"
    }
.end annotation


# instance fields
.field public final zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zac(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zad(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zad;->zag(Lcom/google/android/gms/common/api/internal/zabl;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zai;->zah(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zai;->zah(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 10
    throw p1
.end method

.method public abstract zag(Lcom/google/android/gms/common/api/internal/zabl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
