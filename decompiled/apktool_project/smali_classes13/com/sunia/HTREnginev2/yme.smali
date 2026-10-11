.class public final synthetic Lcom/sunia/HTREnginev2/yme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Ljavax/xml/namespace/QName;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yme;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yme;->f:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yme;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yme;->f:Ljavax/xml/namespace/QName;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->z0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
