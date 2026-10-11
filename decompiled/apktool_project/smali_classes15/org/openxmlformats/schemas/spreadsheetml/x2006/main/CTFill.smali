.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctfill550ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGradientFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;
.end method

.method public abstract addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
.end method

.method public abstract getGradientFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;
.end method

.method public abstract getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
.end method

.method public abstract isSetGradientFill()Z
.end method

.method public abstract isSetPatternFill()Z
.end method

.method public abstract setGradientFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;)V
.end method

.method public abstract setPatternFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;)V
.end method

.method public abstract unsetGradientFill()V
.end method

.method public abstract unsetPatternFill()V
.end method
