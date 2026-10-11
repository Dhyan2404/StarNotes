.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;",
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

    const-string v2, "ctdivs96a6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDiv()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;
.end method

.method public abstract getDivArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;
.end method

.method public abstract getDivArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;
.end method

.method public abstract getDivList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewDiv(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;
.end method

.method public abstract removeDiv(I)V
.end method

.method public abstract setDivArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;)V
.end method

.method public abstract setDivArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;)V
.end method

.method public abstract sizeOfDivArray()I
.end method
