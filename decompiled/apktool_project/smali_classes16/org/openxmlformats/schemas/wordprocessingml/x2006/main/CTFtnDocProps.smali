.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;",
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

    const-string v2, "ctftndocprops307atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFootnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;
.end method

.method public abstract getFootnoteArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;
.end method

.method public abstract getFootnoteArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;
.end method

.method public abstract getFootnoteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewFootnote(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;
.end method

.method public abstract removeFootnote(I)V
.end method

.method public abstract setFootnoteArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;)V
.end method

.method public abstract setFootnoteArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnSepRef;)V
.end method

.method public abstract sizeOfFootnoteArray()I
.end method
