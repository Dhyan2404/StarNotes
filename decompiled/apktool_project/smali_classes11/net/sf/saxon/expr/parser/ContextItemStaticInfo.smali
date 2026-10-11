.class public Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

.field public static final DEFAULT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;


# instance fields
.field public final a:Lnet/sf/saxon/type/ItemType;

.field public final b:Z

.field public c:Lnet/sf/saxon/expr/Expression;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;-><init>(Lnet/sf/saxon/type/ItemType;Z)V

    sput-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->DEFAULT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    new-instance v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;-><init>(Lnet/sf/saxon/type/ItemType;Z)V

    sput-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->a:Lnet/sf/saxon/type/ItemType;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->b:Z

    return-void
.end method


# virtual methods
.method public getContextItemUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getContextSettingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->c:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->a:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public isParentless()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->d:Z

    return p0
.end method

.method public isPossiblyAbsent()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->b:Z

    return p0
.end method

.method public isStrictStreamabilityRules()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setContextPostureGrounded()V
    .locals 0

    return-void
.end method

.method public setContextPostureStriding()V
    .locals 0

    return-void
.end method

.method public setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->c:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setParentless(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->d:Z

    return-void
.end method
