package com.trungvan.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
 
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class LinkDTO {
	
	private @NonNull String endpoint;
	private @NonNull String content;
	private @NonNull Integer numberOfSubtitle;
	private LinkGroupDTO linkGroupDTO;
}
