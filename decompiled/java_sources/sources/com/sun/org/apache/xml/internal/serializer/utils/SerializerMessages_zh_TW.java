package com.sun.org.apache.xml.internal.serializer.utils;

import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class SerializerMessages_zh_TW extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{"ER_SERIALIZER_NOT_CONTENTHANDLER", "serializer 類別 ''{0}'' 不實作 org.xml.sax.ContentHandler。"}, new Object[]{"ER_RESOURCE_COULD_NOT_FIND", "找不到資源 [ {0} ]。\n{1}"}, new Object[]{"ER_RESOURCE_COULD_NOT_LOAD", "無法載入資源 [ {0} ]：{1} \n {2} \n {3}"}, new Object[]{"ER_BUFFER_SIZE_LESSTHAN_ZERO", "緩衝區大小 <=0"}, new Object[]{"ER_INVALID_UTF16_SURROGATE", "偵測到無效的 UTF-16 代理：{0}?"}, new Object[]{"ER_OIERROR", "IO 錯誤"}, new Object[]{"ER_ILLEGAL_ATTRIBUTE_POSITION", "在產生子項節點之後，或在產生元素之前，不可新增屬性 {0}。屬性會被忽略。"}, new Object[]{"ER_NAMESPACE_PREFIX", "字首 ''{0}'' 的名稱空間尚未宣告。"}, new Object[]{"ER_STRAY_NAMESPACE", "名稱空間宣告 ''{0}''=''{1}'' 超出元素外。"}, new Object[]{"ER_COULD_NOT_LOAD_RESOURCE", "無法載入 ''{0}''（檢查 CLASSPATH），目前只使用預設值"}, new Object[]{"ER_COULD_NOT_LOAD_METHOD_PROPERTY", "無法載入輸出方法 ''{1}'' 的內容檔 ''{0}''（檢查 CLASSPATH）"}, new Object[]{"ER_INVALID_PORT", "無效的埠編號"}, new Object[]{"ER_PORT_WHEN_HOST_NULL", "主機為空值時，無法設定埠"}, new Object[]{"ER_HOST_ADDRESS_NOT_WELLFORMED", "主機沒有完整的位址"}, new Object[]{"ER_SCHEME_NOT_CONFORMANT", "綱要不是 conformant。"}, new Object[]{"ER_SCHEME_FROM_NULL_STRING", "無法從空字串設定綱要"}, new Object[]{"ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE", "路徑包含無效的跳脫字元"}, new Object[]{"ER_PATH_INVALID_CHAR", "路徑包含無效的字元：{0}"}, new Object[]{"ER_FRAG_INVALID_CHAR", "片段包含無效的字元"}, new Object[]{"ER_FRAG_WHEN_PATH_NULL", "路徑為空值時，無法設定片段"}, new Object[]{"ER_FRAG_FOR_GENERIC_URI", "只能對通用的 URI 設定片段"}, new Object[]{"ER_NO_SCHEME_IN_URI", "在 URI：{0} 找不到綱要"}, new Object[]{"ER_CANNOT_INIT_URI_EMPTY_PARMS", "無法以空白參數起始設定 URI"}, new Object[]{"ER_NO_FRAGMENT_STRING_IN_PATH", "片段無法同時在路徑和片段中指定"}, new Object[]{"ER_NO_QUERY_STRING_IN_PATH", "在路徑及查詢字串中不可指定查詢字串"}, new Object[]{"ER_NO_PORT_IF_NO_HOST", "如果沒有指定主機，不可指定埠"}, new Object[]{"ER_NO_USERINFO_IF_NO_HOST", "如果沒有指定主機，不可指定 Userinfo"}, new Object[]{"ER_SCHEME_REQUIRED", "綱要是必需的！"}};
    }
}
