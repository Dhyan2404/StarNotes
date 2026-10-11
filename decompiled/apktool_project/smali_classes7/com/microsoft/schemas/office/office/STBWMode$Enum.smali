.class public final Lcom/microsoft/schemas/office/office/STBWMode$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/office/STBWMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_AUTO:I = 0x2

.field static final INT_BLACK:I = 0x8

.field static final INT_BLACK_TEXT_AND_LINES:I = 0xc

.field static final INT_COLOR:I = 0x1

.field static final INT_GRAY_OUTLINE:I = 0x6

.field static final INT_GRAY_SCALE:I = 0x3

.field static final INT_HIDE:I = 0xa

.field static final INT_HIGH_CONTRAST:I = 0x7

.field static final INT_INVERSE_GRAY:I = 0x5

.field static final INT_LIGHT_GRAYSCALE:I = 0x4

.field static final INT_UNDRAWN:I = 0xb

.field static final INT_WHITE:I = 0x9

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v2, "color"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v3, "auto"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v4, "grayScale"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v5, "lightGrayscale"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v6, "inverseGray"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v7, "grayOutline"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v8, "highContrast"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v9, "black"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v10, "white"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v11, "hide"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v12, "undrawn"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v13, "blackTextAndLines"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v1 .. v12}, [Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lcom/microsoft/schemas/office/office/STBWMode$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forInt(I)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object p0

    return-object p0
.end method
