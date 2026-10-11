.class public final synthetic Lcom/sunia/HTREnginev2/wie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Ljavax/xml/namespace/QName;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wie;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wie;->f:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wie;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wie;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wie;->f:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wie;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->d1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
