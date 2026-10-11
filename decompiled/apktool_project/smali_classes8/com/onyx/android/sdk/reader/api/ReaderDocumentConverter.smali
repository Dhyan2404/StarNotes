.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;,
        Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;,
        Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \t2\u00020\u0001:\u0002\u0008\tJ\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;",
        "",
        "convertToPDF",
        "",
        "args",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "callback",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "Callback",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_CAN_NOT_WRITE:I = 0x1

.field public static final NO_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    return-void
.end method


# virtual methods
.method public abstract convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I
    .param p1    # Lcom/onyx/android/sdk/reader/api/ConvertArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
