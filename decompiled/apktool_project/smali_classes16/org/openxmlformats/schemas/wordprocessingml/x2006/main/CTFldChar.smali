.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;",
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

    const-string v2, "ctfldchare83etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;
.end method

.method public abstract addNewFldData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract addNewNumberingChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeNumbering;
.end method

.method public abstract getDirty()Ljava/lang/Object;
.end method

.method public abstract getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;
.end method

.method public abstract getFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;
.end method

.method public abstract getFldData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getFldLock()Ljava/lang/Object;
.end method

.method public abstract getNumberingChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeNumbering;
.end method

.method public abstract isSetDirty()Z
.end method

.method public abstract isSetFfData()Z
.end method

.method public abstract isSetFldData()Z
.end method

.method public abstract isSetFldLock()Z
.end method

.method public abstract isSetNumberingChange()Z
.end method

.method public abstract setDirty(Ljava/lang/Object;)V
.end method

.method public abstract setFfData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;)V
.end method

.method public abstract setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V
.end method

.method public abstract setFldData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setFldLock(Ljava/lang/Object;)V
.end method

.method public abstract setNumberingChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeNumbering;)V
.end method

.method public abstract unsetDirty()V
.end method

.method public abstract unsetFfData()V
.end method

.method public abstract unsetFldData()V
.end method

.method public abstract unsetFldLock()V
.end method

.method public abstract unsetNumberingChange()V
.end method

.method public abstract xgetDirty()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;
.end method

.method public abstract xgetFldLock()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetDirty(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;)V
.end method

.method public abstract xsetFldLock(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
