.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;
    }
.end annotation


# static fields
.field public static final CCW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

.field public static final CW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CCW:I = 0x2

.field public static final INT_CW:I = 0x1

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthuedirdc8ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "cw"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;->CW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

    const-string v0, "ccw"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir;->CCW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHueDir$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
