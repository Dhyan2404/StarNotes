.class public final Lcom/onyx/android/sdk/note/common/command/AttributesCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttributesCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,123:1\n1855#2,2:124\n215#3,2:126\n215#3,2:128\n*S KotlinDebug\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n*L\n97#1:124,2\n115#1:126,2\n118#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\"\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00040\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0016R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/AttributesCommand;",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "attrMap",
        "setShapeOriginAttrMap",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "cloneArgs",
        "clone",
        "b",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "value",
        "d",
        "c",
        "Ljava/util/Map;",
        "shapeAttrPairs",
        "shapeOriginAttrMap",
        "<init>",
        "(Ljava/util/Map;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAttributesCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,123:1\n1855#2,2:124\n215#3,2:126\n215#3,2:128\n*S KotlinDebug\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n*L\n97#1:124,2\n115#1:126,2\n118#1:128,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shapeAttrPairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->a:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isColorChanged()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getColor()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getFillColor()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabledChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabled()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->enableFillColor(Z)V

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isWidthChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v2

    invoke-static {v2}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result v2

    invoke-interface {v4, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isLineStyleTypeChanged()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getLineStyleType()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setLineStyle(I)V

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isRichTextChanged()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v3}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->d(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    :cond_5
    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->c(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    :cond_7
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->b:Ljava/util/Map;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v5

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v5

    invoke-static {v5}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getColor()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getFillColor()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabled()Z

    move-result v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->enableFillColor(Z)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getLineStyleType()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setLineStyle(I)V

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->d(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->c(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getUpdateLinkList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeLink;->getLinkIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)Lcom/onyx/android/sdk/note/common/command/Command;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloneArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->setShapeOriginAttrMap(Ljava/util/Map;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v5}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->clone()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->clone()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public final d(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 1

    const/16 p0, 0x30

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getRichText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/HtmlUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getRichText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->getHtmlTextContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->clearCache(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->a(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method

.method public final setShapeOriginAttrMap(Ljava/util/Map;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/command/AttributesCommand;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "attrMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->b:Ljava/util/Map;

    return-object p0
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method
