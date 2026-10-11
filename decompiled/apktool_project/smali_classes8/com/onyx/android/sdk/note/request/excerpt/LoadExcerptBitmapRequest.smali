.class public final Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0016\u0010\n\"\u0004\u0008\u0017\u0010\u000cR$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "excerptId",
        "Ljava/lang/String;",
        "getExcerptId",
        "()Ljava/lang/String;",
        "setExcerptId",
        "(Ljava/lang/String;)V",
        "Landroid/graphics/Bitmap;",
        "g",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "h",
        "getImgPath",
        "setImgPath",
        "imgPath",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "getExcerptInfoBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "setExcerptInfoBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V",
        "excerptInfoBean",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public excerptId:Ljava/lang/String;

.field public g:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->getExcerptId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt;->loadExcerpt(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getImgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->loadResourceModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v3, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->g:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->i:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-void
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getExcerptId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->excerptId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "excerptId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->i:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-object p0
.end method

.method public final getImgPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setExcerptId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->excerptId:Ljava/lang/String;

    return-void
.end method

.method public final setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->i:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-void
.end method

.method public final setImgPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->h:Ljava/lang/String;

    return-void
.end method
