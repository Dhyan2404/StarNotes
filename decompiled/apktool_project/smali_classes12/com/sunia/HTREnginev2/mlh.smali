.class public final synthetic Lcom/sunia/HTREnginev2/mlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/usermodel/HemfPicture;

.field public final synthetic f:[Lorg/apache/poi/hemf/record/emf/HemfHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;[Lorg/apache/poi/hemf/record/emf/HemfHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mlh;->e:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mlh;->f:[Lorg/apache/poi/hemf/record/emf/HemfHeader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mlh;->e:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mlh;->f:[Lorg/apache/poi/hemf/record/emf/HemfHeader;

    check-cast p1, Lorg/apache/poi/hemf/record/emf/HemfRecord;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->d(Lorg/apache/poi/hemf/usermodel/HemfPicture;[Lorg/apache/poi/hemf/record/emf/HemfHeader;Lorg/apache/poi/hemf/record/emf/HemfRecord;)V

    return-void
.end method
