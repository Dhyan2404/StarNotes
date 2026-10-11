.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;",
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

    const-string v2, "ctdocvarsdf8etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDocVar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;
.end method

.method public abstract getDocVarArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;
.end method

.method public abstract getDocVarArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;
.end method

.method public abstract getDocVarList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewDocVar(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;
.end method

.method public abstract removeDocVar(I)V
.end method

.method public abstract setDocVarArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;)V
.end method

.method public abstract setDocVarArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVar;)V
.end method

.method public abstract sizeOfDocVarArray()I
.end method
