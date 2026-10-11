.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;
    }
.end annotation


# static fields
.field public static final BOTH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOTH:I = 0x1

.field public static final INT_MINUS:I = 0x2

.field public static final INT_PLUS:I = 0x3

.field public static final MINUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

.field public static final PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sterrbartypea2a4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "both"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;->BOTH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    const-string v0, "minus"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;->MINUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    const-string v0, "plus"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType;->PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
