.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)Ljava/util/Map;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->getResultList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;->a(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
