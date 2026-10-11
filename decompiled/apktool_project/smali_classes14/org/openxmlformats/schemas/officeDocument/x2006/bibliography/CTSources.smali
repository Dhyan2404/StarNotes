.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSources;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSources;",
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

    const-string v2, "ctsourcesa9fetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSources;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSources;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSource()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;
.end method

.method public abstract getSelectedStyle()Ljava/lang/String;
.end method

.method public abstract getSourceArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;
.end method

.method public abstract getSourceArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;
.end method

.method public abstract getSourceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract insertNewSource(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;
.end method

.method public abstract isSetSelectedStyle()Z
.end method

.method public abstract isSetStyleName()Z
.end method

.method public abstract isSetURI()Z
.end method

.method public abstract removeSource(I)V
.end method

.method public abstract setSelectedStyle(Ljava/lang/String;)V
.end method

.method public abstract setSourceArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;)V
.end method

.method public abstract setSourceArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;)V
.end method

.method public abstract setStyleName(Ljava/lang/String;)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract sizeOfSourceArray()I
.end method

.method public abstract unsetSelectedStyle()V
.end method

.method public abstract unsetStyleName()V
.end method

.method public abstract unsetURI()V
.end method

.method public abstract xgetSelectedStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStyleName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetURI()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetSelectedStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStyleName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetURI(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
