/* ResultsTableView.m
 *  
 * Copyright (C) 2004 Free Software Foundation, Inc.
 *
 * Author: Enrico Sersale <enrico@imago.ro>
 * Date: March 2004
 *
 * This file is part of the GNUstep GWorkspace application
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 31 Milk Street #960789 Boston, MA 02196 USA.
 */

#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "ResultsTableView.h"

@implementation ResultsTableView

- (NSImage *)dragImageForRows:(NSArray *)dragRows
			                  event:(NSEvent *)dragEvent 
	            dragImageOffset:(NSPointPointer)dragImageOffset
{
  id deleg = [self delegate];
  
  if ([deleg respondsToSelector: @selector(tableView:dragImageForRows:)]) {
    NSImage *image = [deleg tableView: self dragImageForRows: dragRows];
    if (image) {
      return image;
    }
  }
      
  return [super dragImageForRows: dragRows
  		                     event: dragEvent 
		             dragImageOffset: dragImageOffset];
}

@end
