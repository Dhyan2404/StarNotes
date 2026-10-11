.class public final Lnet/vrallev/android/task/TaskCacheFragmentInterface$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/task/TaskCacheFragmentInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;
    .locals 0

    instance-of p0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskCacheFragmentSupport;->k0(Landroidx/fragment/app/FragmentActivity;)Lnet/vrallev/android/task/TaskCacheFragmentSupport;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lnet/vrallev/android/task/TaskCacheFragment;->a(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragment;

    move-result-object p0

    return-object p0
.end method
