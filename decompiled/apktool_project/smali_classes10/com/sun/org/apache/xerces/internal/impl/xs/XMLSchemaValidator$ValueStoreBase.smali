.class public abstract Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ValueStoreBase"
.end annotation


# instance fields
.field protected fFieldCount:I

.field protected fFields:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

.field private fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field public fItemValueTypes:Ljava/util/Vector;

.field private fItemValueTypesLength:I

.field protected fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field final fTempBuffer:Ljava/lang/StringBuffer;

.field private fUseItemValueTypeVector:Z

.field private fUseValueTypeVector:Z

.field private fValueType:S

.field public fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

.field private fValueTypesLength:I

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v0, p2, [Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    new-array v0, p2, [S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    new-array p2, p2, [Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    :goto_0
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addItemValueType(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    :cond_3
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private addValueType(S)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-nez v0, :cond_1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_1

    :cond_1
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v2, :cond_2

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    :cond_2
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getItemValueTypeAt(I)Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method private getValueTypeAt(I)S
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result p0

    return p0

    :cond_0
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    return p0
.end method

.method private itemValueTypeContains(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private valueTypeContains(S)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result p0

    return p0

    :cond_0
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addValue(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Ljava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "UnknownField"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->mayMatch(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "FieldMultipleMatch"

    invoke-virtual {v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short p3, p1, v0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aput-object p4, p1, v0

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    const/4 p1, 0x0

    :goto_3
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short p2, p2, p1

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->addValueType(S)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aget-object p2, p2, p1

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->addItemValueType(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public append(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkDuplicateValues()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void
.end method

.method public contains(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 12
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    .line 13
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 14
    iget v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v5, 0x1

    const/16 v6, 0x2b

    const/16 v7, 0x2c

    if-gt v4, v5, :cond_4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_b

    .line 15
    invoke-direct {v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v4

    .line 16
    invoke-direct {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->valueTypeContains(S)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_2

    .line 17
    :cond_1
    invoke-direct {v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v4

    .line 18
    invoke-direct {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->itemValueTypeContains(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)Z

    move-result v4

    if-nez v4, :cond_2

    return v8

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v8

    .line 19
    :cond_4
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_b

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_a

    const/4 v10, 0x0

    .line 20
    :goto_4
    iget v11, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v10, v11, :cond_9

    add-int v11, v5, v10

    .line 21
    invoke-virtual {v2, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 22
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v14, v9, v10

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 23
    invoke-direct {v1, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v15

    .line 24
    invoke-direct {v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    if-eq v12, v13, :cond_5

    if-ne v15, v8, :cond_8

    if-eqz v12, :cond_8

    .line 25
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    if-eq v15, v7, :cond_6

    if-ne v15, v6, :cond_7

    .line 26
    :cond_6
    invoke-direct {v1, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v8

    .line 27
    invoke-direct {v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v11

    if-eqz v8, :cond_8

    if-eqz v11, :cond_8

    .line 28
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 29
    :cond_8
    :goto_5
    iget v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v9, v8

    goto :goto_3

    :cond_9
    add-int/2addr v5, v11

    goto :goto_2

    :cond_a
    return v5

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public contains()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v3, v2

    move v4, v1

    .line 3
    :goto_1
    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v4, v5, :cond_4

    .line 4
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 5
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v7, v7, v4

    .line 7
    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-ne v7, v8, :cond_3

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/16 v5, 0x2c

    if-eq v7, v5, :cond_1

    const/16 v5, 0x2b

    if-ne v7, v5, :cond_2

    .line 9
    :cond_1
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aget-object v5, v5, v4

    .line 10
    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    return-void
.end method

.method public endValueScope()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AbsentKeyValue"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UniqueNotEnoughValues"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;->getKey()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyRefNotEnoughValues"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyNotEnoughValues"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startValueScope()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v0, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p3, p0, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    if-lez v0, :cond_2

    const/16 v1, 0x2c

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int v1, p2, v0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    if-lez v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
