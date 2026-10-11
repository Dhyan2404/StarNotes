.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;",
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

    const-string v2, "ctomathpara8825type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOMath()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract addNewOMathParaPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;
.end method

.method public abstract getOMathArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOMathParaPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;
.end method

.method public abstract insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract isSetOMathParaPr()Z
.end method

.method public abstract removeOMath(I)V
.end method

.method public abstract setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathParaPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;)V
.end method

.method public abstract sizeOfOMathArray()I
.end method

.method public abstract unsetOMathParaPr()V
.end method
