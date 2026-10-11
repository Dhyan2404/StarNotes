.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;",
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

    const-string v2, "cttliteratedatac1c3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTmAbs()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalTime;
.end method

.method public abstract addNewTmPct()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalPercentage;
.end method

.method public abstract getBackwards()Z
.end method

.method public abstract getTmAbs()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalTime;
.end method

.method public abstract getTmPct()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalPercentage;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STIterateType$Enum;
.end method

.method public abstract isSetBackwards()Z
.end method

.method public abstract isSetTmAbs()Z
.end method

.method public abstract isSetTmPct()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setBackwards(Z)V
.end method

.method public abstract setTmAbs(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalTime;)V
.end method

.method public abstract setTmPct(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateIntervalPercentage;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STIterateType$Enum;)V
.end method

.method public abstract unsetBackwards()V
.end method

.method public abstract unsetTmAbs()V
.end method

.method public abstract unsetTmPct()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetBackwards()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STIterateType;
.end method

.method public abstract xsetBackwards(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STIterateType;)V
.end method
