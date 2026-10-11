.class public final synthetic Lcom/sunia/HTREnginev2/weh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/EscherAggregate;

.field public final synthetic f:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

.field public final synthetic g:Lorg/apache/poi/poifs/filesystem/DirectoryNode;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/weh;->e:Lorg/apache/poi/hssf/record/EscherAggregate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/weh;->f:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/weh;->g:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/weh;->e:Lorg/apache/poi/hssf/record/EscherAggregate;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/weh;->f:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/weh;->g:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    check-cast p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->a(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/ddf/EscherContainerRecord;)V

    return-void
.end method
