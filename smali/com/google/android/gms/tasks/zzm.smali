.class public final Lcom/google/android/gms/tasks/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzn;Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzm;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzm;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzm;->$r8$classId:I

    const-string v0, "lock"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzm;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 2
    iget-object v1, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    iget-object v2, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 13
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzn;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzn;->zzb:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/zzn;

    .line 16
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzn;->zzc:Lcom/google/android/gms/tasks/OnSuccessListener;

    if-eqz v2, :cond_1

    .line 17
    check-cast v1, Lcom/google/android/gms/tasks/zzn;

    .line 18
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzn;->zzc:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 21
    :cond_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 22
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 24
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
