package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class ErrorMessages_es extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{BasisLibrary.RUN_TIME_INTERNAL_ERR, "Error interno de ejecución en ''{0}''"}, new Object[]{BasisLibrary.RUN_TIME_COPY_ERR, "Error de ejecución al ejecutar <xsl:copy>."}, new Object[]{"DATA_CONVERSION_ERR", "Conversión no válida de ''{0}'' a ''{1}''."}, new Object[]{BasisLibrary.EXTERNAL_FUNC_ERR, "Función externa ''{0}'' no soportada por XSLTC."}, new Object[]{BasisLibrary.EQUALITY_EXPR_ERR, "Tipo de argumento desconocido en expresión de igualdad."}, new Object[]{BasisLibrary.INVALID_ARGUMENT_ERR, "Tipo de argumento ''{0}'' no válido en llamada a ''{1}''"}, new Object[]{BasisLibrary.FORMAT_NUMBER_ERR, "Intento de formatear el número ''{0}'' utilizando el patrón ''{1}''."}, new Object[]{BasisLibrary.ITERATOR_CLONE_ERR, "No se puede replicar el iterador ''{0}''."}, new Object[]{BasisLibrary.AXIS_SUPPORT_ERR, "Iterador para el eje ''{0}'' no soportado."}, new Object[]{BasisLibrary.TYPED_AXIS_SUPPORT_ERR, "Iterador para el eje escrito ''{0}'' no soportado."}, new Object[]{"STRAY_ATTRIBUTE_ERR", "Atributo ''{0}'' fuera del elemento."}, new Object[]{BasisLibrary.STRAY_NAMESPACE_ERR, "Declaración del espacio de nombres ''{0}''=''{1}'' fuera del elemento."}, new Object[]{BasisLibrary.NAMESPACE_PREFIX_ERR, "No se ha declarado el espacio de nombres para el prefijo ''{0}''."}, new Object[]{BasisLibrary.DOM_ADAPTER_INIT_ERR, "DOMAdapter creado mediante un tipo incorrecto de DOM origen."}, new Object[]{BasisLibrary.PARSER_DTD_SUPPORT_ERR, "El analizador SAX utilizado no maneja sucesos de declaración DTD."}, new Object[]{BasisLibrary.NAMESPACES_SUPPORT_ERR, "El analizador SAX utilizado no tiene soporte de espacios de nombres XML."}, new Object[]{BasisLibrary.CANT_RESOLVE_RELATIVE_URI_ERR, "No se ha podido resolver la referencia de URI ''{0}''."}};
    }
}
