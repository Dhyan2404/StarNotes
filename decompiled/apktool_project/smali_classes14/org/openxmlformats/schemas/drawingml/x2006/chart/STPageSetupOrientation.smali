.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DEFAULT:I = 0x1

.field public static final INT_LANDSCAPE:I = 0x3

.field public static final INT_PORTRAIT:I = 0x2

.field public static final LANDSCAPE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

.field public static final PORTRAIT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpagesetuporientation9caatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "default"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;->DEFAULT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    const-string v0, "portrait"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;->PORTRAIT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    const-string v0, "landscape"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation;->LANDSCAPE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STPageSetupOrientation$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
