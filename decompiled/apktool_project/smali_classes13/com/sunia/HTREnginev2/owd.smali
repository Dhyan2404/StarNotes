.class public final synthetic Lcom/sunia/HTREnginev2/owd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/io/BufferedReader;

.field public final synthetic f:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/owd;->e:Ljava/io/BufferedReader;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/owd;->f:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/owd;->e:Ljava/io/BufferedReader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/owd;->f:Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->c(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V

    return-void
.end method
