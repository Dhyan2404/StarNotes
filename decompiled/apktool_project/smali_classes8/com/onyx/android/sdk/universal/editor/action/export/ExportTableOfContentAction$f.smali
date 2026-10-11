.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction;->m(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportTableOfContentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2,2:78\n*S KotlinDebug\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n*L\n40#1:78,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExportTableOfContentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2,2:78\n*S KotlinDebug\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n*L\n40#1:78,2\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    sget-object v1, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;->convertFromModel(Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$f;->a(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
