.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;

    const-string v2, "filedesc9392type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;
.end method

.method public abstract getCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFolder()Ljava/lang/String;
.end method

.method public abstract getRole()Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;
.end method

.method public abstract getTsDir()Ljava/lang/String;
.end method

.method public abstract getValidity()Z
.end method

.method public abstract isSetCode()Z
.end method

.method public abstract isSetFileName()Z
.end method

.method public abstract isSetFolder()Z
.end method

.method public abstract isSetRole()Z
.end method

.method public abstract isSetTsDir()Z
.end method

.method public abstract isSetValidity()Z
.end method

.method public abstract setCode(Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;)V
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method

.method public abstract setFolder(Ljava/lang/String;)V
.end method

.method public abstract setRole(Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;)V
.end method

.method public abstract setTsDir(Ljava/lang/String;)V
.end method

.method public abstract setValidity(Z)V
.end method

.method public abstract unsetCode()V
.end method

.method public abstract unsetFileName()V
.end method

.method public abstract unsetFolder()V
.end method

.method public abstract unsetRole()V
.end method

.method public abstract unsetTsDir()V
.end method

.method public abstract unsetValidity()V
.end method

.method public abstract xgetFileName()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetFolder()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetRole()Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;
.end method

.method public abstract xgetTsDir()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetValidity()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFileName(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetFolder(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetRole(Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;)V
.end method

.method public abstract xsetTsDir(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetValidity(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
