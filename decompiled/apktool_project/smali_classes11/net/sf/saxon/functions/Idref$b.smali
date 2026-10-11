.class public Lnet/sf/saxon/functions/Idref$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/MappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Idref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/TreeInfo;

.field public f:Lnet/sf/saxon/expr/XPathContext;

.field public g:Lnet/sf/saxon/trans/KeyManager;

.field public h:Lnet/sf/saxon/trans/KeyDefinitionSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/functions/Idref$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/functions/Idref$b;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/Idref$b;->g:Lnet/sf/saxon/trans/KeyManager;

    iget-object v1, p0, Lnet/sf/saxon/functions/Idref$b;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    iget-object v2, p0, Lnet/sf/saxon/functions/Idref$b;->e:Lnet/sf/saxon/om/TreeInfo;

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/functions/Idref$b;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, v1, v2, p1, p0}, Lnet/sf/saxon/trans/KeyManager;->selectByKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
