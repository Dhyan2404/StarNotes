.class public final Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR$\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R(\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR(\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000b\u001a\u0004\u0008\u0010\u0010\rR(\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R(\u0010\u001d\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00188\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;",
        "",
        "",
        "<set-?>",
        "a",
        "I",
        "getMediaType",
        "()I",
        "mediaType",
        "",
        "b",
        "Ljava/lang/String;",
        "getObjId",
        "()Ljava/lang/String;",
        "objId",
        "c",
        "getName",
        "name",
        "Landroid/graphics/RectF;",
        "d",
        "Landroid/graphics/RectF;",
        "getRect",
        "()Landroid/graphics/RectF;",
        "rect",
        "",
        "e",
        "[B",
        "getData",
        "()[B",
        "data",
        "<init>",
        "()V",
        "Companion",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_NONE:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->Companion:Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setData$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;[B)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->e:[B

    return-void
.end method

.method public static final synthetic access$setMediaType$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->a:I

    return-void
.end method

.method public static final synthetic access$setName$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setObjId$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRect$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->e:[B

    return-object p0
.end method

.method public final getMediaType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->a:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getObjId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->d:Landroid/graphics/RectF;

    return-object p0
.end method
