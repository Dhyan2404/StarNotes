.class public final Lcom/microsoft/schemas/office/office/STFillType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/office/STFillType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_BACKGROUND:I = 0x9

.field static final INT_FRAME:I = 0x5

.field static final INT_GRADIENT:I = 0x8

.field static final INT_GRADIENT_CENTER:I = 0x1

.field static final INT_GRADIENT_RADIAL:I = 0x7

.field static final INT_GRADIENT_UNSCALED:I = 0x6

.field static final INT_PATTERN:I = 0x3

.field static final INT_SOLID:I = 0x2

.field static final INT_TILE:I = 0x4

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v2, "gradientCenter"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v3, "solid"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v4, "pattern"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v5, "tile"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v6, "frame"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v7, "gradientUnscaled"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v8, "gradientRadial"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v9, "gradient"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    const-string v10, "background"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/schemas/office/office/STFillType$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v1 .. v9}, [Lcom/microsoft/schemas/office/office/STFillType$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STFillType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lcom/microsoft/schemas/office/office/STFillType$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/office/STFillType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STFillType$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/office/STFillType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/office/STFillType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/schemas/office/office/STFillType$Enum;->forInt(I)Lcom/microsoft/schemas/office/office/STFillType$Enum;

    move-result-object p0

    return-object p0
.end method
