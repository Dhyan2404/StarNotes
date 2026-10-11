.class public Lsun/font/Decoration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/Decoration$DecorationImpl;,
        Lsun/font/Decoration$Label;
    }
.end annotation


# static fields
.field private static final PLAIN:Lsun/font/Decoration;

.field private static final VALUES_MASK:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Lsun/font/EAttribute;->EFOREGROUND:Lsun/font/EAttribute;

    sget-object v1, Lsun/font/EAttribute;->EBACKGROUND:Lsun/font/EAttribute;

    sget-object v2, Lsun/font/EAttribute;->ESWAP_COLORS:Lsun/font/EAttribute;

    sget-object v3, Lsun/font/EAttribute;->ESTRIKETHROUGH:Lsun/font/EAttribute;

    sget-object v4, Lsun/font/EAttribute;->EUNDERLINE:Lsun/font/EAttribute;

    sget-object v5, Lsun/font/EAttribute;->EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

    sget-object v6, Lsun/font/EAttribute;->EINPUT_METHOD_UNDERLINE:Lsun/font/EAttribute;

    filled-new-array/range {v0 .. v6}, [Lsun/font/EAttribute;

    move-result-object v0

    invoke-static {v0}, Lsun/font/AttributeValues;->getMask([Lsun/font/EAttribute;)I

    move-result v0

    sput v0, Lsun/font/Decoration;->VALUES_MASK:I

    new-instance v0, Lsun/font/Decoration;

    invoke-direct {v0}, Lsun/font/Decoration;-><init>()V

    sput-object v0, Lsun/font/Decoration;->PLAIN:Lsun/font/Decoration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/font/Decoration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/font/Decoration;-><init>()V

    return-void
.end method

.method public static getDecoration(Ljava/util/Map;)Lsun/font/Decoration;
    .locals 0

    if-nez p0, :cond_0

    .line 10
    sget-object p0, Lsun/font/Decoration;->PLAIN:Lsun/font/Decoration;

    return-object p0

    .line 11
    :cond_0
    invoke-static {p0}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;)Lsun/font/AttributeValues;

    move-result-object p0

    invoke-static {p0}, Lsun/font/Decoration;->getDecoration(Lsun/font/AttributeValues;)Lsun/font/Decoration;

    move-result-object p0

    return-object p0
.end method

.method public static getDecoration(Lsun/font/AttributeValues;)Lsun/font/Decoration;
    .locals 8

    if-eqz p0, :cond_1

    .line 1
    sget v0, Lsun/font/Decoration;->VALUES_MASK:I

    invoke-virtual {p0, v0}, Lsun/font/AttributeValues;->anyDefined(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsun/font/AttributeValues;->applyIMHighlight()Lsun/font/AttributeValues;

    move-result-object p0

    .line 3
    new-instance v7, Lsun/font/Decoration$DecorationImpl;

    invoke-virtual {p0}, Lsun/font/AttributeValues;->getForeground()Ljava/awt/Paint;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lsun/font/AttributeValues;->getBackground()Ljava/awt/Paint;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lsun/font/AttributeValues;->getSwapColors()Z

    move-result v3

    .line 6
    invoke-virtual {p0}, Lsun/font/AttributeValues;->getStrikethrough()Z

    move-result v4

    .line 7
    invoke-virtual {p0}, Lsun/font/AttributeValues;->getUnderline()I

    move-result v0

    invoke-static {v0}, Lsun/font/Underline;->getUnderline(I)Lsun/font/Underline;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lsun/font/AttributeValues;->getInputMethodUnderline()I

    move-result p0

    invoke-static {p0}, Lsun/font/Underline;->getUnderline(I)Lsun/font/Underline;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lsun/font/Decoration$DecorationImpl;-><init>(Ljava/awt/Paint;Ljava/awt/Paint;ZZLsun/font/Underline;Lsun/font/Underline;)V

    return-object v7

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lsun/font/Decoration;->PLAIN:Lsun/font/Decoration;

    return-object p0
.end method

.method public static getPlainDecoration()Lsun/font/Decoration;
    .locals 1

    sget-object v0, Lsun/font/Decoration;->PLAIN:Lsun/font/Decoration;

    return-object v0
.end method


# virtual methods
.method public drawTextAndDecorations(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lsun/font/Decoration$Label;->handleDraw(Ljava/awt/Graphics2D;FF)V

    return-void
.end method

.method public getCharVisualBounds(Lsun/font/Decoration$Label;I)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-interface {p1, p2}, Lsun/font/Decoration$Label;->handleGetCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getOutline(Lsun/font/Decoration$Label;FF)Ljava/awt/Shape;
    .locals 0

    invoke-interface {p1, p2, p3}, Lsun/font/Decoration$Label;->handleGetOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getVisualBounds(Lsun/font/Decoration$Label;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-interface {p1}, Lsun/font/Decoration$Label;->handleGetVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method
