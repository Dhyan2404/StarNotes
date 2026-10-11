.class public final enum Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum CONTENT_LENGTH_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v1, "INFO_DIRTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v2, "FILE_NOT_EXIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v2, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v3, "OUTPUT_STREAM_NOT_SUPPORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v3, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v4, "RESPONSE_ETAG_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v4, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v5, "RESPONSE_PRECONDITION_FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v5, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v6, "RESPONSE_CREATED_RANGE_NOT_FROM_0"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v6, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v7, "RESPONSE_RESET_RANGE_NOT_FROM_0"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    new-instance v7, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const-string v8, "CONTENT_LENGTH_CHANGED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->CONTENT_LENGTH_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    filled-new-array/range {v0 .. v7}, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    const-class v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    sget-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object v0
.end method
