.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,173:1\n215#2,2:174\n*S KotlinDebug\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n*L\n169#1:174,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007J(\u0010\r\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\t*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0002RN\u0010\u0015\u001a.\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\n0\u000ej\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\n`\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;",
        "",
        "",
        "type",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "createInstance",
        "create",
        "",
        "createAll",
        "T",
        "Lkotlin/reflect/KClass;",
        "classType",
        "",
        "a",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "getMap",
        "()Ljava/util/HashMap;",
        "setMap",
        "(Ljava/util/HashMap;)V",
        "map",
        "<init>",
        "()V",
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
        "SMAP\nShapeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,173:1\n215#2,2:174\n*S KotlinDebug\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n*L\n169#1:174,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/CharcoalScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/pen/FreeShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/PolygonShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/RhombusShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/PolyLineShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/graphical/TrapezoidShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/StampShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/AttachmentShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/SvgShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/TimestampShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/TextExcerptShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/SVGDrawableShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/erase/EraseOverlayShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/erase/AreaEraseShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    const-class v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a(ILkotlin/reflect/KClass;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/reflect/KClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">(I",
            "Lkotlin/reflect/KClass<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->createInstance(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/TextExcerptShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TextExcerptShape;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/SVGDrawableShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/SVGDrawableShape;-><init>()V

    goto/16 :goto_0

    :pswitch_7
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;-><init>()V

    goto/16 :goto_0

    :pswitch_8
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;-><init>()V

    goto/16 :goto_0

    :pswitch_9
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;-><init>()V

    goto/16 :goto_0

    :pswitch_a
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;-><init>()V

    goto/16 :goto_0

    :pswitch_b
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/TimestampShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TimestampShape;-><init>()V

    goto/16 :goto_0

    :pswitch_c
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;-><init>()V

    goto/16 :goto_0

    :pswitch_d
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/FreeShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/FreeShape;-><init>()V

    goto/16 :goto_0

    :pswitch_e
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/SvgShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/SvgShape;-><init>()V

    goto/16 :goto_0

    :pswitch_f
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/AttachmentShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AttachmentShape;-><init>()V

    goto/16 :goto_0

    :pswitch_10
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;-><init>()V

    goto/16 :goto_0

    :pswitch_11
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/StampShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/StampShape;-><init>()V

    goto/16 :goto_0

    :pswitch_12
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/PolyLineShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/PolyLineShape;-><init>()V

    goto/16 :goto_0

    :pswitch_13
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;-><init>()V

    goto/16 :goto_0

    :pswitch_14
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularHexagonShape;-><init>()V

    goto/16 :goto_0

    :pswitch_15
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TrapezoidShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TrapezoidShape;-><init>()V

    goto/16 :goto_0

    :pswitch_16
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape;-><init>()V

    goto/16 :goto_0

    :pswitch_17
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;-><init>()V

    goto/16 :goto_0

    :pswitch_18
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;-><init>()V

    goto/16 :goto_0

    :pswitch_19
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/CharcoalScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/CharcoalScribbleShape;-><init>()V

    goto/16 :goto_0

    :pswitch_1a
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/NeoBrushShape;-><init>()V

    goto :goto_0

    :pswitch_1b
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/erase/AreaEraseShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/erase/AreaEraseShape;-><init>()V

    goto :goto_0

    :pswitch_1c
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;-><init>()V

    goto :goto_0

    :pswitch_1d
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RhombusShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/RhombusShape;-><init>()V

    goto :goto_0

    :pswitch_1e
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/PolygonShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/PolygonShape;-><init>()V

    goto :goto_0

    :pswitch_1f
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;-><init>()V

    goto :goto_0

    :pswitch_20
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;-><init>()V

    goto :goto_0

    :pswitch_21
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/erase/EraseOverlayShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/erase/EraseOverlayShape;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;-><init>()V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;-><init>()V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;-><init>()V

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;-><init>()V

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape;-><init>()V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final createInstance(I)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KClass;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;-><init>()V

    return-object p0
.end method

.method public final getMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public final setMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->a:Ljava/util/HashMap;

    return-void
.end method
