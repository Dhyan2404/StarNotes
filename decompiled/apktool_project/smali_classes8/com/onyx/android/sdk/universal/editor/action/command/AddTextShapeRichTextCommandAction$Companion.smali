.class public final Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;",
        "",
        "()V",
        "buildRichTextCommand",
        "Lcom/onyx/android/sdk/note/common/command/AttributesCommand;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "richText",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRichTextCommand(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->clone()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->resetChanged()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->setShapeOriginAttrMap(Ljava/util/Map;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    return-object p2
.end method
