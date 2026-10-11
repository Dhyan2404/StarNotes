.class public Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coercer"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/type/SpecificFunctionType;

.field public final f:Lnet/sf/saxon/Configuration;

.field public final g:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->e:Lnet/sf/saxon/type/SpecificFunctionType;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->f:Lnet/sf/saxon/Configuration;

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->g:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/Function;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->e:Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->f:Lnet/sf/saxon/Configuration;

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->d(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/Configuration;)V

    .line 4
    new-instance v0, Lnet/sf/saxon/functions/hof/CoercedFunction;

    check-cast p1, Lnet/sf/saxon/om/Function;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->e:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/functions/hof/CoercedFunction;-><init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->g:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 6
    throw p1

    .line 7
    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function coercion attempted on an item ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") which is not a function"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XPTY0004"

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->g:Lnet/sf/saxon/s9api/Location;

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public bridge synthetic mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;->mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method
