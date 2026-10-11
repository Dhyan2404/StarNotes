.class public final Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->A(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,223:1\n215#2,2:224\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n*L\n168#1:224,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,223:1\n215#2,2:224\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n*L\n168#1:224,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;->e:Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;->e:Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->access$getFontItemShowAdapter(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->saveTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;->a(Ljava/util/Map;)V

    return-void
.end method
