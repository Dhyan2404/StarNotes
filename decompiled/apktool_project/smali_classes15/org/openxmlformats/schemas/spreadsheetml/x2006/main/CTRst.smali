.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
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

    const-string v2, "ctrsta472type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPhoneticPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
.end method

.method public abstract addNewRPh()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;
.end method

.method public abstract getPhoneticPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRPhArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;
.end method

.method public abstract getRPhArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;
.end method

.method public abstract getRPhList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getT()Ljava/lang/String;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
.end method

.method public abstract insertNewRPh(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;
.end method

.method public abstract isSetPhoneticPr()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract removeR(I)V
.end method

.method public abstract removeRPh(I)V
.end method

.method public abstract setPhoneticPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;)V
.end method

.method public abstract setRPhArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;)V
.end method

.method public abstract setRPhArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;)V
.end method

.method public abstract setT(Ljava/lang/String;)V
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract sizeOfRPhArray()I
.end method

.method public abstract unsetPhoneticPr()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetT()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetT(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
