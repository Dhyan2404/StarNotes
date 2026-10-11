.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final INNER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

.field public static final INT_INNER:I = 0x1

.field public static final INT_OUTER:I = 0x2

.field public static final OUTER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stlayouttarget19f1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "inner"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->INNER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    const-string v0, "outer"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->OUTER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
