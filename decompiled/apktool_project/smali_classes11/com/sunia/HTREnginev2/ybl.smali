.class public final synthetic Lcom/sunia/HTREnginev2/ybl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public final synthetic b:Lnet/sf/saxon/regex/charclass/CharacterClass;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ybl;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ybl;->b:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ybl;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ybl;->b:Lnet/sf/saxon/regex/charclass/CharacterClass;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/regex/RECompiler;->b(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z

    move-result p0

    return p0
.end method
