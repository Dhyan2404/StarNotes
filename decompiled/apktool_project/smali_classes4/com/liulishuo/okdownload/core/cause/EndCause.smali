.class public final enum Lcom/liulishuo/okdownload/core/cause/EndCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/okdownload/core/cause/EndCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v1, "COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v1, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v2, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v3, "CANCELED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v3, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v4, "FILE_BUSY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/liulishuo/okdownload/core/cause/EndCause;->FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v4, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v5, "SAME_TASK_BUSY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/liulishuo/okdownload/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v5, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v6, "PRE_ALLOCATE_FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/liulishuo/okdownload/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    filled-new-array/range {v0 .. v5}, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    const-class v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/core/cause/EndCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object v0
.end method
