.class public final synthetic Lcom/sunia/HTREnginev2/eje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eje;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/eje;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/eje;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/eje;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/eje;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eje;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->B0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
