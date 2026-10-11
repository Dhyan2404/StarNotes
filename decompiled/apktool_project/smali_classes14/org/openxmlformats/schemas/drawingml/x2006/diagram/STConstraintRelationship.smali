.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;
    }
.end annotation


# static fields
.field public static final CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

.field public static final DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CH:I = 0x2

.field public static final INT_DES:I = 0x3

.field public static final INT_SELF:I = 0x1

.field public static final SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stconstraintrelationshipa64ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "self"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;->SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    const-string v0, "ch"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;->CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    const-string v0, "des"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;->DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
