.class public final enum Lnet/vrallev/android/task/TaskExecutor$PostResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/task/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/vrallev/android/task/TaskExecutor$PostResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/vrallev/android/task/TaskExecutor$PostResult;

.field public static final enum IMMEDIATELY:Lnet/vrallev/android/task/TaskExecutor$PostResult;

.field public static final enum ON_ANY_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;

.field public static final enum UI_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/vrallev/android/task/TaskExecutor$PostResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;->IMMEDIATELY:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    new-instance v1, Lnet/vrallev/android/task/TaskExecutor$PostResult;

    const-string v2, "ON_ANY_THREAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/vrallev/android/task/TaskExecutor$PostResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/vrallev/android/task/TaskExecutor$PostResult;->ON_ANY_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    new-instance v2, Lnet/vrallev/android/task/TaskExecutor$PostResult;

    const-string v3, "UI_THREAD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/vrallev/android/task/TaskExecutor$PostResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/vrallev/android/task/TaskExecutor$PostResult;->UI_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    filled-new-array {v0, v1, v2}, [Lnet/vrallev/android/task/TaskExecutor$PostResult;

    move-result-object v0

    sput-object v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;->$VALUES:[Lnet/vrallev/android/task/TaskExecutor$PostResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/vrallev/android/task/TaskExecutor$PostResult;
    .locals 1

    const-class v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/vrallev/android/task/TaskExecutor$PostResult;

    return-object p0
.end method

.method public static values()[Lnet/vrallev/android/task/TaskExecutor$PostResult;
    .locals 1

    sget-object v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;->$VALUES:[Lnet/vrallev/android/task/TaskExecutor$PostResult;

    invoke-virtual {v0}, [Lnet/vrallev/android/task/TaskExecutor$PostResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/vrallev/android/task/TaskExecutor$PostResult;

    return-object v0
.end method
