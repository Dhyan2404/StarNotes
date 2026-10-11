.class public final Lcom/onyx/android/sdk/reader/api/ReaderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \r2\u00060\u0001j\u0002`\u0002:\u0001\rB\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005B%\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "throwable",
        "",
        "(Ljava/lang/Throwable;)V",
        "code",
        "",
        "message",
        "",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "getCode",
        "()I",
        "Companion",
        "sdk-readercore_overseasRelease"
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
.field public static final ABORTED:I = 0x14

.field public static final ACTIVATION_FAILED:I = 0x65

.field public static final ADOBE_DRM_ERROR:I = 0xf

.field public static final COULD_NOT_OPEN:I = 0x3

.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_EXCEPTION:I = 0xb

.field public static final DRM_ERROR:I = 0xd

.field public static final EMPTY_DOCUMENT:I = 0x12

.field public static final EXCEED_FIRST_PAGE:I = 0x6

.field public static final EXCEED_LAST_PAGE:I = 0x5

.field public static final EXTENSION_NOT_MATCHED:I = 0x10

.field public static final FILE_READ_ONLY:I = 0x9

.field public static final ILLEGAL_DOCUMENT_FORMAT:I = 0x11

.field public static final INVALID_PLUGIN:I = 0x2

.field public static final JD_COMIC_PAGE_NOT_FOUND:I = 0x68

.field public static final JD_CONTENT_NOT_AVAILABLE:I = 0x66

.field public static final JEB_DRM_ERROR:I = 0xe

.field public static final MISSING_FONT:I = 0x67

.field public static final MOBI_DICTIONARY:I = 0x13

.field public static final NET_NOVEL_CHAPTER_NOT_FOUND:I = 0x64

.field public static final NO_REVIEW_DATA:I = 0xa

.field public static final NULL_REQUEST:I = 0x4

.field public static final OUT_OF_RANGE:I = 0x7

.field public static final PASSWORD_REQUIRED:I = 0x1

.field public static final TTS_PAGE_INVALID:I = 0xc

.field public static final UNKNOWN_EXCEPTION:I = 0x8


# instance fields
.field private final code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->code:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const-string p2, ""

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, ""

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->code:I

    return p0
.end method
