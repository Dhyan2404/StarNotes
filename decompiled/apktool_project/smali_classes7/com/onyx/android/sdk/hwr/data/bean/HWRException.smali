.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;,
        Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00162\u00060\u0001j\u0002`\u0002:\u0002\u0016\u0017B\u0011\u0008\u0012\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0019\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "e",
        "",
        "(Ljava/lang/Throwable;)V",
        "(Ljava/lang/Throwable;Ljava/lang/String;)V",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "type",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        "getType",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        "setType",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V",
        "Companion",
        "ExceptionType",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private code:I

.field private type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->code:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->code:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->code:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->code:I

    return p0
.end method

.method public final getType()Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    return-object p0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->code:I

    return-void
.end method

.method public final setType(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->type:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    return-void
.end method
