.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSmartTagPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSmartTagPr;",
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

    const-string v2, "ctsmarttagpr0ebctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSmartTagPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSmartTagPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getEmbed()Z
.end method

.method public abstract getShow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSmartTagShow$Enum;
.end method

.method public abstract isSetEmbed()Z
.end method

.method public abstract isSetShow()Z
.end method

.method public abstract setEmbed(Z)V
.end method

.method public abstract setShow(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSmartTagShow$Enum;)V
.end method

.method public abstract unsetEmbed()V
.end method

.method public abstract unsetShow()V
.end method

.method public abstract xgetEmbed()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSmartTagShow;
.end method

.method public abstract xsetEmbed(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShow(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSmartTagShow;)V
.end method
