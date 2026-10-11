.class public Lnet/sf/saxon/expr/ComponentBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/trans/SymbolicName;

.field public final b:Lnet/sf/saxon/expr/Component;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/expr/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ComponentBinding;->a:Lnet/sf/saxon/trans/SymbolicName;

    iput-object p2, p0, Lnet/sf/saxon/expr/ComponentBinding;->b:Lnet/sf/saxon/expr/Component;

    return-void
.end method


# virtual methods
.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ComponentBinding;->a:Lnet/sf/saxon/trans/SymbolicName;

    return-object p0
.end method

.method public getTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ComponentBinding;->b:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method
