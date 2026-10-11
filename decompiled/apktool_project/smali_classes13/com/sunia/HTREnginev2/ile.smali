.class public final synthetic Lcom/sunia/HTREnginev2/ile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Ljavax/xml/namespace/QName;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ile;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ile;->f:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ile;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ile;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ile;->f:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ile;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->y0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method
