.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;",
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

    const-string v2, "ctrubyprb2actype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDirty()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewHpsBaseText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewHpsRaise()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract addNewRubyAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;
.end method

.method public abstract getDirty()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getHpsBaseText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getHpsRaise()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract getRubyAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;
.end method

.method public abstract isSetDirty()Z
.end method

.method public abstract setDirty(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setHpsBaseText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setHpsRaise(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setLid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;)V
.end method

.method public abstract setRubyAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;)V
.end method

.method public abstract unsetDirty()V
.end method
