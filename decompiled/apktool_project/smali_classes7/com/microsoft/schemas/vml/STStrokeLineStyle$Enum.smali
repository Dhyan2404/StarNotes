.class public final Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/vml/STStrokeLineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_SINGLE:I = 0x1

.field static final INT_THICK_BETWEEN_THIN:I = 0x5

.field static final INT_THICK_THIN:I = 0x4

.field static final INT_THIN_THICK:I = 0x3

.field static final INT_THIN_THIN:I = 0x2

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v2, "single"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v3, "thinThin"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v4, "thinThick"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v5, "thickThin"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    const-string v6, "thickBetweenThin"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;->forInt(I)Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;

    move-result-object p0

    return-object p0
.end method
