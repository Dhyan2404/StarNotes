.class public final Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;->m(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/nio/file/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appPageThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$a;->a(J)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
