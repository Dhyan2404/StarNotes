.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "selection",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "nextPosition",
        "",
        "endOfScreen",
        "",
        "endOfDocument",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/reader/api/ReaderSelection;IZZ)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "selection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZ)V

    return-object p0
.end method
