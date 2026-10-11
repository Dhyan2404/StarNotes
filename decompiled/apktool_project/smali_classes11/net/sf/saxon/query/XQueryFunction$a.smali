.class public Lnet/sf/saxon/query/XQueryFunction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/GlobalVariableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/query/XQueryFunction;->optimize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/sf/saxon/query/XQueryFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/XQueryFunction;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction$a;->a:Lnet/sf/saxon/query/XQueryFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction$a;->a:Lnet/sf/saxon/query/XQueryFunction;

    invoke-static {v0}, Lnet/sf/saxon/query/XQueryFunction;->a(Lnet/sf/saxon/query/XQueryFunction;)Lnet/sf/saxon/query/QueryModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getGlobalSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    move-result v1

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction$a;->a:Lnet/sf/saxon/query/XQueryFunction;

    invoke-static {p0}, Lnet/sf/saxon/query/XQueryFunction;->a(Lnet/sf/saxon/query/XQueryFunction;)Lnet/sf/saxon/query/QueryModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->compile(Lnet/sf/saxon/expr/instruct/Executable;I)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/PackageData;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    return-void
.end method

.method public getEquivalentVariable(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
